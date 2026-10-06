.class public Lte/a;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/content/Context;

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lte/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lte/a;->f()V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lte/a;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lte/a;->g(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lx4/y;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string v0, "img/privacy_apps_lottie_night.json"

    goto :goto_0

    :cond_0
    const-string v0, "img/privacy_apps_lottie.json"

    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "img/privacy_apps_lottie_night_phone.json"

    goto :goto_1

    :cond_2
    const-string v0, "img/privacy_apps_lottie_phone.json"

    :goto_1
    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lte/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lte/a;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0e046d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0853

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lte/a;->a:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0659

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lte/a;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    const-string v1, "img"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    iget-object v0, p0, Lte/a;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Lte/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lte/a;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lte/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lte/a;->c:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lte/a;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lte/a;->dismiss()V

    :cond_0
    return-void
.end method
