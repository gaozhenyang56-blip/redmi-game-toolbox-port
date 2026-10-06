.class public Lcom/miui/gamebooster/globalgame/present/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/globalgame/present/b$b;
    }
.end annotation


# static fields
.field private static final a:Lrh/c;

.field private static final b:Lrh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/globalgame/present/b;->a:Lrh/c;

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    const v1, 0x7f0806a8

    invoke-virtual {v0, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/globalgame/present/b;->b:Lrh/c;

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Lcom/miui/gamebooster/globalgame/module/GameListItem;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/gamebooster/globalgame/present/b;->e(Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Lcom/miui/gamebooster/globalgame/module/GameListItem;Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/gamebooster/globalgame/present/b;->d(Landroid/content/Context;)I

    move-result p0

    instance-of v0, p1, Lcom/miui/gamebooster/globalgame/view/RoundedImageView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/gamebooster/globalgame/view/RoundedImageView;

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/miui/gamebooster/globalgame/view/RoundedImageView;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public static varargs c(Landroid/content/Context;Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Lcom/miui/gamebooster/globalgame/module/GameListItem;[Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/globalgame/present/a;

    invoke-direct {v0, p1, p2, p0}, Lcom/miui/gamebooster/globalgame/present/a;-><init>(Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Lcom/miui/gamebooster/globalgame/module/GameListItem;Landroid/content/Context;)V

    invoke-static {v0, p3}, Lc7/c;->I(Ljava/lang/Runnable;[Landroid/view/View;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070fe3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private static synthetic e(Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Lcom/miui/gamebooster/globalgame/module/GameListItem;Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/module/BannerCardBean;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/module/BannerCardBean;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/module/BannerCardBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/globalgame/module/GameListItem;->getGameLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/globalgame/module/GameListItem;->getGameLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/globalgame/module/GameListItem;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v2, v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lc7/c;->N(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2, v0}, Lc7/c;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v2, 0x7f12020a

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {p2, v0, v2}, Lc7/c;->J(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget p2, p0, Lcom/miui/gamebooster/globalgame/module/BannerCardBean;->index:I

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/module/BannerCardBean;->title:Ljava/lang/String;

    iget p0, p0, Lcom/miui/gamebooster/globalgame/module/BannerCardBean;->type:I

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->name:Ljava/lang/String;

    :goto_2
    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    iget p1, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameIndex:I

    :goto_3
    invoke-static {p2, v0, p0, v1, p1}, Lb7/c;->c(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Ljava/lang/Runnable;)V
    .locals 0
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p2}, Lcom/miui/gamebooster/globalgame/present/b;->b(Landroid/content/Context;Landroid/widget/ImageView;)V

    new-instance p0, Lcom/miui/gamebooster/globalgame/present/b$a;

    invoke-direct {p0, p4}, Lcom/miui/gamebooster/globalgame/present/b$a;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, p2, p3, p0}, Lx4/o0;->g(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Lyh/a;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0

    instance-of p0, p2, Lcom/miui/gamebooster/globalgame/view/RoundedImageView;

    if-eqz p0, :cond_0

    move-object p0, p2

    check-cast p0, Lcom/miui/gamebooster/globalgame/view/RoundedImageView;

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Lcom/miui/gamebooster/globalgame/view/RoundedImageView;->setCornerRadius(F)V

    :cond_0
    sget-object p0, Lcom/miui/gamebooster/globalgame/present/b;->b:Lrh/c;

    invoke-static {p1, p2, p0}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    return-void
.end method
