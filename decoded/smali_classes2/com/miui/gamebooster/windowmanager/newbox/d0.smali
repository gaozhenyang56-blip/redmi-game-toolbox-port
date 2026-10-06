.class public Lcom/miui/gamebooster/windowmanager/newbox/d0;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/RadioGroup;

.field private g:Landroid/widget/RadioButton;

.field private h:Landroid/widget/RadioButton;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ls8/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->a:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "GameTurboMainView: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "GameTurboMainView"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, La8/u0;->n(Ljava/lang/String;)V

    invoke-static {p3}, La8/u0;->o(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "GameTurboMainView"

    const-string v1, "init GameTurboMainView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->g()V

    const v0, 0x7f0b0466

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->b:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0468

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f0b046a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->d:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0608

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->e:Landroid/widget/ImageView;

    const v0, 0x7f0b046b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0b0bd6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->g:Landroid/widget/RadioButton;

    invoke-static {}, Lc7/c;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120972

    goto :goto_0

    :cond_0
    const v1, 0x7f120970

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0bd5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->h:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->g:Landroid/widget/RadioButton;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->h:Landroid/widget/RadioButton;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    const v0, 0x7f0b0607

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->i:Landroid/widget/ImageView;

    const v0, 0x7f0b0467

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->j:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->setRootView(Lcom/miui/gamebooster/windowmanager/newbox/d0;)V

    const v0, 0x7f0b045c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->k:Landroid/view/View;

    invoke-static {}, La8/u0;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->l:Z

    invoke-static {}, La8/u0;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    invoke-static {}, La8/u0;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->n:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->h()V

    return-void
.end method

.method private g()V
    .locals 2

    const v0, 0x7f0602f3

    invoke-static {p0, v0}, Lx4/k;->h(Landroid/view/ViewGroup;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dd7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lx4/k;->a(Landroid/view/View;F)V

    return-void
.end method

.method private h()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: supportGameCenter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mShowGameCenter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mShowGameCenterRedDot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameTurboMainView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0679

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->l:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b067a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->l:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->l:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->a:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0805ec

    goto :goto_2

    :cond_2
    const v4, 0x7f080616

    :goto_2
    invoke-static {v1, v4}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->f:Landroid/widget/RadioGroup;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0b0bd5

    goto :goto_3

    :cond_3
    const v1, 0x7f0b0bd6

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->g:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->h:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->j:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->k:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->l:Z

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    invoke-static {v0, v1, p0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->gameToolboxShown(ZZLandroid/view/View;)V

    :cond_6
    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->n:Z

    if-eqz v0, :cond_7

    invoke-static {}, La8/u0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lx4/o0;->n()Lrh/d;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lrh/d;->g(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public getMainContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSecondContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getStatusListener()Ls8/w;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->o:Ls8/w;

    return-object v0
.end method

.method public getThirdContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->k:Landroid/view/View;

    instance-of p2, p1, Lcom/miui/gamecenter/ui/GameCenterMainView;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->H()V

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, La8/u0;->r(Z)V

    iput-boolean p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->n:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->m:Z

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->k:Landroid/view/View;

    instance-of p2, p1, Lcom/miui/gamecenter/ui/GameCenterMainView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->I()V

    :cond_0
    const-string p1, "\u6e38\u620f\u4e2d\u5fc3"

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->saveStayPage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->h()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0bd5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnBrightnessChange(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->j:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->setOnBrightnessChange(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnStatusChangeListener(Ls8/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/d0;->o:Ls8/w;

    return-void
.end method
