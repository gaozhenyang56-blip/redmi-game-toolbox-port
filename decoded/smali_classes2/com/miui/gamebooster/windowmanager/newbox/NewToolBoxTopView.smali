.class public Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;
    }
.end annotation


# static fields
.field private static F:Ljava/lang/String; = "NewToolBoxTopView"


# instance fields
.field private A:Z

.field private final B:I

.field private C:I

.field private D:Landroid/widget/ImageView;

.field private E:Ljava/lang/Runnable;

.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/airbnb/lottie/LottieAnimationView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/miui/gamebooster/widget/LightningTextView;

.field private t:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

.field private u:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

.field private volatile v:Z

.field private w:I

.field private x:Z

.field private y:Landroid/view/View$OnClickListener;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "0"

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->e:Ljava/lang/String;

    const/16 p2, 0x1e

    iput p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->B:I

    new-instance p2, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)V

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->E:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->C(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->g:I

    return p1
.end method

.method private B(Z)I
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f060349

    goto :goto_0

    :cond_0
    const p1, 0x7f060346

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method

.method private C(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    return-void
.end method

.method private D()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    const v1, 0x7f0e029c

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b06a2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->h:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/f0;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    const v0, 0x7f0b0dcd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->D:Landroid/widget/ImageView;

    const v0, 0x7f0b0473

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->i:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0b0472

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->j:Landroid/widget/ImageView;

    const v0, 0x7f0b046e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->k:Landroid/widget/ImageView;

    const v0, 0x7f0b02b9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->m:Landroid/widget/TextView;

    const v0, 0x7f0b0494

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->n:Landroid/widget/TextView;

    const v0, 0x7f0b0433

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->o:Landroid/widget/TextView;

    const v0, 0x7f0b0c78

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/LightningTextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    const v0, 0x7f0b0470

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->p:Landroid/widget/TextView;

    const v0, 0x7f0b046f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->t:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    const v0, 0x7f0b0471

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->q:Landroid/widget/TextView;

    const v0, 0x7f0b046d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->r:Landroid/widget/TextView;

    const v0, 0x7f0b046c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->u:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    const v0, 0x7f0b0643

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->G()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->setVisionEnhanceIconVisibility(Z)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->H()V

    iput-boolean v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->x:Z

    invoke-static {}, La8/g0;->H()Z

    move-result v0

    const-string v2, "%"

    const/16 v3, 0x8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->n:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, La8/k;->c()Z

    move-result v0

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->t:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    if-eqz v0, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->u:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v3

    :goto_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->p:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "HH:mm"

    invoke-static {v4, v5, v2}, Lx4/x1;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->q:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lx4/x1;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->t:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    int-to-float v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->setProcess(F)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->u:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    invoke-virtual {v2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->setProcess(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->r:Landroid/widget/TextView;

    invoke-static {}, La8/k;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    invoke-static {v1}, La8/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lc7/c;->q()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private synthetic E(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_2

    const v1, 0x7f08061d

    goto :goto_1

    :cond_2
    const v1, 0x7f08061c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->B(Z)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->setTvPerformance(Z)V

    iput-boolean p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->A:Z

    iget-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->z:Z

    if-nez p1, :cond_3

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$h;->d(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->z:Z

    :cond_3
    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->E(ZZ)V

    return-void
.end method

.method static synthetic g(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->x:Z

    return p0
.end method

.method private getMaxFps()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->w:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/w;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->w:I

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->w:I

    return v0
.end method

.method static synthetic h(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->t:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->v:Z

    return p0
.end method

.method static synthetic l(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->getMaxFps()I

    move-result p0

    return p0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)I
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->C:I

    return v0
.end method

.method static synthetic o(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->E:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic s(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method private setTvPerformance(Z)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-static {}, Lc7/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    const v1, 0x7f12094d

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    const v1, 0x7f120a8a

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    const v1, 0x7f120a86

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->B(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0806d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071d86

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v4, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->B(Z)I

    move-result p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    invoke-virtual {p1, v2, v2, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic t(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic v(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic w(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic y(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic z(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->g:I

    return p0
.end method


# virtual methods
.method public F(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->v:Z

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->E:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->v:Z

    invoke-static {}, La8/g0;->H()Z

    move-result v0

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;

    invoke-direct {v1, p0, p1, v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Landroid/os/Handler;Z)V

    invoke-static {v1}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method H()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/g0;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/g0;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)V

    invoke-virtual {v0, v1}, Lh7/g;->m(Lh7/g$b;)V

    return-void
.end method

.method protected getLayoutTop()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->h:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getLowFpsCount()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->C:I

    return v0
.end method

.method protected getPerformanceTextView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->G(Landroid/os/Handler;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0c78

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->y:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->A:Z

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$h;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->F(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->x:Z

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->i:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s:Lcom/miui/gamebooster/widget/LightningTextView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/widget/LightningTextView;->e()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->D()V

    return-void
.end method

.method public setOnPerformanceClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->y:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setVisionEnhanceIconVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
