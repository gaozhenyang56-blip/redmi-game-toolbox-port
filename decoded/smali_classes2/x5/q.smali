.class public final Lx5/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/dock/sidebar/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lmiuix/popupwidget/widget/GuidePopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/dock/sidebar/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_applicationCtx"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_sideBarWrap"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lx5/q;->b:Ljava/lang/ref/WeakReference;

    const-string p1, "PREF_COMMON_GUIDE_TIPS_SHOW_TIMES"

    iput-object p1, p0, Lx5/q;->c:Ljava/lang/String;

    const-string p1, "PREF_SIMULTANEOUS_GUIDE_TIPS_SHOW_TIMES"

    iput-object p1, p0, Lx5/q;->d:Ljava/lang/String;

    const-string p1, "ConversationToolBoxGuide"

    iput-object p1, p0, Lx5/q;->e:Ljava/lang/String;

    invoke-static {}, Lx5/p;->z0()Z

    move-result p1

    iput-boolean p1, p0, Lx5/q;->g:Z

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 5

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    iget-object v1, p0, Lx5/q;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La8/y1;->b(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->B()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lw5/f;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    iget-boolean v1, p0, Lx5/q;->g:Z

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    const v1, 0x7f1205d8

    goto :goto_0

    :cond_2
    const v1, 0x7f1205d9

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const v1, 0x7f1205de

    goto :goto_0

    :cond_4
    const v1, 0x7f1205df

    :goto_0
    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v2

    iget-object v4, p0, Lx5/q;->c:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-virtual {v2, v4, v0}, La8/y1;->h(Ljava/lang/String;I)V

    iget-object v0, p0, Lx5/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_applicationCtx.resources.getString(tip)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lx5/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final d()Ljava/lang/String;
    .locals 5

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    iget-object v1, p0, Lx5/q;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La8/y1;->b(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->f0()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Ld6/c;->h:Ld6/c$a;

    invoke-virtual {v1}, Ld6/c$a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_6

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v1

    iget-object v4, p0, Lx5/q;->d:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-virtual {v1, v4, v0}, La8/y1;->h(Ljava/lang/String;I)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lw5/f;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    iget-boolean v0, p0, Lx5/q;->g:Z

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    const v0, 0x7f1205d6

    goto :goto_1

    :cond_3
    const v0, 0x7f1205da

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const v0, 0x7f1205dc

    goto :goto_1

    :cond_5
    const v0, 0x7f1205e0

    :goto_1
    iget-object v1, p0, Lx5/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_applicationCtx.resources.getString(tip)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_6
    invoke-direct {p0}, Lx5/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final f(Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lx5/q;->a:Landroid/content/Context;

    const v2, 0x7f13017f

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-direct {v1, v0}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lx5/q;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    invoke-static {}, La8/k2;->A()Z

    move-result p1

    const/16 v0, 0x12

    const/16 v1, 0x11

    const/16 v2, 0x9

    const/16 v3, 0xa

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->I()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->I()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->I()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->I()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    iget-object p1, p0, Lx5/q;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    iget-object p1, p0, Lx5/q;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    const p1, 0x7f07083e

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lx5/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lx5/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    neg-int p1, p1

    :goto_3
    iget-object v0, p0, Lx5/q;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    iget-object p1, p0, Lx5/q;->e:Ljava/lang/String;

    const-string p2, "showGuide"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    iget-object p2, p0, Lx5/q;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGuide fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lx5/q;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lx5/q;->f:Lmiuix/popupwidget/widget/GuidePopupWindow;

    iget-object v0, p0, Lx5/q;->e:Ljava/lang/String;

    const-string v1, "dismissGuide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lx5/q;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissGuide fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lx5/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/dock/sidebar/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lx5/q;->e:Ljava/lang/String;

    const-string v1, "sidebar is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Ld6/c;->h:Ld6/c$a;

    invoke-virtual {v1}, Ld6/c$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lx5/q;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lx4/y;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lx5/q;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lx5/q;->b()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-direct {p0, v1, v0}, Lx5/q;->f(Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V

    :cond_4
    return-void
.end method
