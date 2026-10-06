.class public Lcom/miui/superpower/statusbar/icon/BatteryView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/icon/BatteryView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/superpower/statusbar/icon/BatteryView$a;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/ClipDrawable;

.field private j:Ljava/lang/Boolean;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/icon/BatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object p1, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->a:Landroid/content/Context;

    new-instance p2, Lcom/miui/superpower/statusbar/icon/BatteryView$a;

    invoke-direct {p2, p0, p1}, Lcom/miui/superpower/statusbar/icon/BatteryView$a;-><init>(Lcom/miui/superpower/statusbar/icon/BatteryView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->b:Lcom/miui/superpower/statusbar/icon/BatteryView$a;

    const p2, 0x7f0e04e6

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0b0153

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->d:Landroid/widget/ImageView;

    const p2, 0x7f0b0146

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->e:Landroid/widget/ImageView;

    const p2, 0x7f0b015a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->c:Landroid/widget/TextView;

    invoke-static {p1}, Lpg/g;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/BatteryView;->b()V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->d:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->e:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/icon/BatteryView;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/superpower/statusbar/icon/BatteryView;->c(IIZ)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->a:Landroid/content/Context;

    const-string v1, "battery_meter_progress_charging"

    const v2, 0x7f08100d

    invoke-static {v0, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->a:Landroid/content/Context;

    const-string v1, "battery_meter_progress_power_save"

    const v2, 0x7f08100e

    invoke-static {v0, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->a:Landroid/content/Context;

    const-string v1, "battery_meter_bg"

    const v2, 0x7f08100c

    invoke-static {v0, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->h:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->a:Landroid/content/Context;

    const-string v1, "battery_meter_progress_gravity_start"

    const v2, 0x7f050007

    invoke-static {v0, v1, v2}, Lmg/b;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x800003

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x800005

    :goto_0
    iput v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->k:I

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071be7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private c(IIZ)V
    .locals 6

    const/16 v0, 0x64

    if-nez p2, :cond_0

    move p2, v0

    :cond_0
    mul-int/2addr p1, v0

    div-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%d%%"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->j:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p2, p3, :cond_4

    :cond_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->j:Ljava/lang/Boolean;

    new-instance p2, Landroid/graphics/drawable/ClipDrawable;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->f:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->k:I

    invoke-direct {p2, p3, v2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->g:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->k:I

    invoke-direct {p2, p3, v2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    :goto_0
    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->i:Landroid/graphics/drawable/ClipDrawable;

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->i:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->i:Landroid/graphics/drawable/ClipDrawable;

    if-eqz p2, :cond_5

    mul-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->i:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->b:Lcom/miui/superpower/statusbar/icon/BatteryView$a;

    invoke-virtual {v0}, Lmg/a;->a()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x64

    const-string v4, "scale"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "plugged"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v1, v3, v2}, Lcom/miui/superpower/statusbar/icon/BatteryView;->c(IIZ)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/BatteryView;->b:Lcom/miui/superpower/statusbar/icon/BatteryView$a;

    invoke-virtual {v0}, Lmg/a;->b()V

    return-void
.end method
