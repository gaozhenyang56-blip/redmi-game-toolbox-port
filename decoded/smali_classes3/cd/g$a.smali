.class public Lcd/g$a;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/securityscan/ui/main/WaveTextView;

.field protected e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/miui/securityscan/ui/main/WaveTextView;

.field protected i:Landroid/view/View;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/miui/securityscan/ui/main/WaveTextView;

.field protected m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/miui/securityscan/ui/main/WaveTextView;

.field private q:[Landroid/view/View;

.field private r:[Landroid/widget/ImageView;

.field protected s:[Landroid/widget/TextView;

.field private t:[Lcom/miui/securityscan/ui/main/WaveTextView;

.field private u:Landroid/view/View;

.field private v:Landroid/content/Context;

.field private w:Le3/d;

.field private x:I

.field public y:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const v1, 0x7f080e64

    invoke-virtual {v0, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcd/g$a;->y:Lrh/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcd/g$a;->v:Landroid/content/Context;

    new-instance v1, Le3/d;

    invoke-direct {v1, v0}, Le3/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcd/g$a;->w:Le3/d;

    iget-object v0, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07188d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcd/g$a;->x:I

    invoke-direct {p0, p1}, Lcd/g$a;->initView(Landroid/view/View;)V

    return-void
.end method

.method private c(Lcom/miui/common/card/GridFunctionData;Ljava/lang/String;Lcom/miui/securityscan/ui/main/WaveTextView;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldd/d;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f1211ee

    invoke-virtual {p3, p1}, Lcom/miui/securityscan/ui/main/WaveTextView;->setText(I)V

    return-void

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lpf/g;->k()I

    move-result p2

    iget-object v0, p0, Lcd/g$a;->w:Le3/d;

    invoke-virtual {v0}, Le3/d;->c()Z

    move-result v0

    if-lez p2, :cond_4

    if-eqz v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpf/g;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Lcom/miui/securityscan/ui/main/WaveTextView;->setText(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const-string v0, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v2, 0x1dcd6500

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-static {p2}, Ldd/d;->h(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ldd/d;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    cmp-long p2, v4, v2

    if-lez p2, :cond_4

    :goto_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, v4, v5, v1}, Lx4/j0;->d(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-static {p2}, Ldd/d;->f(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ldd/d;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    cmp-long p2, v4, v2

    if-lez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private d(Lcom/miui/common/card/GridFunctionData;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p3}, Ldd/d;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3, v0}, Ldd/d;->j(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {v1}, Ldd/d;->l(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Ldd/d;->k(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/appmanager/AppManageUtils;->v0(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->A0(Z)V

    iget-object p1, p0, Lcd/g$a;->v:Landroid/content/Context;

    check-cast p1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->s0()V

    :cond_3
    :goto_0
    const p1, 0x7f0b0b16

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/ui/main/WaveTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcd/g$a;->v:Landroid/content/Context;

    check-cast p1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->I0()V

    return-void
.end method

.method private fillIconViews(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 14

    const v0, 0x7f0b0268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcd/g$a;->a:Landroid/view/View;

    const v1, 0x7f0b0506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcd/g$a;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcd/g$a;->a:Landroid/view/View;

    const v2, 0x7f0b0bc9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcd/g$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcd/g$a;->a:Landroid/view/View;

    const v3, 0x7f0b0b16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/WaveTextView;

    iput-object v0, p0, Lcd/g$a;->d:Lcom/miui/securityscan/ui/main/WaveTextView;

    invoke-static {}, Lx4/y1;->f()Z

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const-string v6, "no support folme"

    const-string v7, "PhoneManagerItemViewHolder"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-array v0, v9, [Landroid/view/View;

    iget-object v11, p0, Lcd/g$a;->a:Landroid/view/View;

    aput-object v11, v0, v10

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v11

    invoke-interface {v11, v5, v8, v8, v8}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v11

    new-array v12, v9, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v13, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v13, v12, v10

    invoke-interface {v11, v4, v12}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v11, p0, Lcd/g$a;->a:Landroid/view/View;

    new-array v12, v10, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v11, v12}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const v0, 0x7f0b0269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcd/g$a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcd/g$a;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcd/g$a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcd/g$a;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcd/g$a;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/WaveTextView;

    iput-object v0, p0, Lcd/g$a;->h:Lcom/miui/securityscan/ui/main/WaveTextView;

    invoke-static {}, Lx4/y1;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-array v0, v9, [Landroid/view/View;

    iget-object v11, p0, Lcd/g$a;->e:Landroid/view/View;

    aput-object v11, v0, v10

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v11

    invoke-interface {v11, v5, v8, v8, v8}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v11

    new-array v12, v9, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v13, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v13, v12, v10

    invoke-interface {v11, v4, v12}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v11, p0, Lcd/g$a;->e:Landroid/view/View;

    new-array v12, v10, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v11, v12}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const v0, 0x7f0b026a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcd/g$a;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcd/g$a;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcd/g$a;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcd/g$a;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcd/g$a;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/WaveTextView;

    iput-object v0, p0, Lcd/g$a;->l:Lcom/miui/securityscan/ui/main/WaveTextView;

    invoke-static {}, Lx4/y1;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    new-array v0, v9, [Landroid/view/View;

    iget-object v11, p0, Lcd/g$a;->i:Landroid/view/View;

    aput-object v11, v0, v10

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v11

    invoke-interface {v11, v5, v8, v8, v8}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v11

    new-array v12, v9, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v13, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v13, v12, v10

    invoke-interface {v11, v4, v12}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v11, p0, Lcd/g$a;->i:Landroid/view/View;

    new-array v12, v10, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v11, v12}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const v0, 0x7f0b026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcd/g$a;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcd/g$a;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcd/g$a;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcd/g$a;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcd/g$a;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/WaveTextView;

    iput-object v0, p0, Lcd/g$a;->p:Lcom/miui/securityscan/ui/main/WaveTextView;

    invoke-static {}, Lx4/y1;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    new-array v0, v9, [Landroid/view/View;

    iget-object v1, p0, Lcd/g$a;->m:Landroid/view/View;

    aput-object v1, v0, v10

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    invoke-interface {v1, v5, v8, v8, v8}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v2, v9, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v3, v2, v10

    invoke-interface {v1, v4, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcd/g$a;->m:Landroid/view/View;

    new-array v2, v10, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    const v0, 0x7f0b05af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcd/g$a;->u:Landroid/view/View;

    const/4 p1, 0x4

    new-array v0, p1, [Landroid/view/View;

    iget-object v1, p0, Lcd/g$a;->a:Landroid/view/View;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcd/g$a;->e:Landroid/view/View;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcd/g$a;->i:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcd/g$a;->m:Landroid/view/View;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iput-object v0, p0, Lcd/g$a;->q:[Landroid/view/View;

    move v0, v10

    :goto_4
    iget-object v1, p0, Lcd/g$a;->q:[Landroid/view/View;

    array-length v4, v1

    if-ge v0, v4, :cond_4

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    new-array v0, p1, [Landroid/widget/TextView;

    iget-object v1, p0, Lcd/g$a;->c:Landroid/widget/TextView;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcd/g$a;->g:Landroid/widget/TextView;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcd/g$a;->k:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcd/g$a;->o:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcd/g$a;->s:[Landroid/widget/TextView;

    new-array v0, p1, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcd/g$a;->b:Landroid/widget/ImageView;

    aput-object v1, v0, v10

    iget-object v4, p0, Lcd/g$a;->f:Landroid/widget/ImageView;

    aput-object v4, v0, v9

    iget-object v4, p0, Lcd/g$a;->j:Landroid/widget/ImageView;

    aput-object v4, v0, v2

    iget-object v4, p0, Lcd/g$a;->n:Landroid/widget/ImageView;

    aput-object v4, v0, v3

    iput-object v0, p0, Lcd/g$a;->r:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f060cdc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcd/g$a;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcd/g$a;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcd/g$a;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-array p1, p1, [Lcom/miui/securityscan/ui/main/WaveTextView;

    iget-object v0, p0, Lcd/g$a;->d:Lcom/miui/securityscan/ui/main/WaveTextView;

    aput-object v0, p1, v10

    iget-object v0, p0, Lcd/g$a;->h:Lcom/miui/securityscan/ui/main/WaveTextView;

    aput-object v0, p1, v9

    iget-object v0, p0, Lcd/g$a;->l:Lcom/miui/securityscan/ui/main/WaveTextView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcd/g$a;->p:Lcom/miui/securityscan/ui/main/WaveTextView;

    aput-object v0, p1, v3

    iput-object p1, p0, Lcd/g$a;->t:[Lcom/miui/securityscan/ui/main/WaveTextView;

    return-void
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 6

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    check-cast p2, Lcd/g;

    invoke-virtual {p2}, Lcom/miui/common/card/models/FunctionCardModel;->getGridFunctionDataList()Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcd/g;->a(Lcd/g;)Z

    move-result p3

    const v0, 0x7f0807b8

    const v1, 0x7f0804c1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcd/g;->b(Lcd/g;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcd/g;->c(Lcd/g;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcd/g$a;->u:Landroid/view/View;

    const v0, 0x7f0807c7

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcd/g;->c(Lcd/g;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcd/g$a;->u:Landroid/view/View;

    const v0, 0x7f0807c9

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_1
    invoke-static {p2}, Lcd/g;->b(Lcd/g;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcd/g;->b(Lcd/g;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2}, Lcd/g;->c(Lcd/g;)Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_1
    iget-object p3, p0, Lcd/g$a;->u:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcd/g$a;->u:Landroid/view/View;

    iget v0, p0, Lcd/g$a;->x:I

    invoke-virtual {p3, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p3, p0, Lcd/g$a;->u:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lcd/g;->c(Lcd/g;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    iget-object p3, p0, Lcd/g$a;->u:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    iget-object p3, p0, Lcd/g$a;->u:Landroid/view/View;

    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_5
    invoke-static {p2}, Lcd/g;->b(Lcd/g;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :goto_3
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_4
    iget-object v1, p0, Lcd/g$a;->q:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/GridFunctionData;

    iget-object v3, p0, Lcd/g$a;->q:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcd/g$a;->q:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcd/g$a;->s:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcd/g$a;->s:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->isMarquee()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v1, v5}, Lcom/miui/common/card/GridFunctionData;->setMarquee(Z)V

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcd/g$a;->t:[Lcom/miui/securityscan/ui/main/WaveTextView;

    aget-object v4, v4, v0

    invoke-direct {p0, v1, v3, v4}, Lcd/g$a;->c(Lcom/miui/common/card/GridFunctionData;Ljava/lang/String;Lcom/miui/securityscan/ui/main/WaveTextView;)V

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->isUseLocalPic()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcd/g$a;->r:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->getLocalPicResoourceId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcd/g$a;->fillIconViews(Landroid/widget/ImageView;I)V

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcd/g$a;->r:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcd/g$a;->y:Lrh/c;

    invoke-static {v3, v4, v5}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_5
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcd/g$a;->q:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcd/g$a;->q:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->isDefaultStatShow()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p3}, Lqf/c;->o0(Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/miui/common/card/GridFunctionData;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "enter_homepage_way"

    const-string v4, "phone_manage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "back"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v3, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "enter_way"

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v3, "#Intent;action=miui.intent.action.KIDMODE_ENTRANCE;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "enter_kid_space_channel"

    const-string v4, "phonemanage_page"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v3, "#Intent;action=miui.intent.action.ZMAN_SECURITY_SHARE_SETTING;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-direct {p0, v0, p1, v1}, Lcd/g$a;->d(Lcom/miui/common/card/GridFunctionData;Landroid/view/View;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-static {p1, v2}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string p1, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.MiCloudFindDeviceStatusActivity;end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-static {p1, v2}, Lx4/t;->P(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string p1, "#Intent;action=miui.intent.action.SIM_LOCK_CHOOSE;end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/simlock/c;->s(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcd/g$a;->v:Landroid/content/Context;

    invoke-static {p1, v2}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcd/g$a;->v:Landroid/content/Context;

    const v2, 0x7f120210

    invoke-static {p1, v2}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_7
    :goto_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v2, Lcd/g$a$a;

    invoke-direct {v2, p0, v1}, Lcd/g$a$a;-><init>(Lcd/g$a;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lef/z;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "PhoneManagerItemViewHolder"

    const-string v2, "onClick error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getDataId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-static {p1}, Lqf/c;->m0(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
