.class Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;
.super Lcom/miui/superpower/statusbar/panel/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;


# direct methods
.method private constructor <init>(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/panel/a$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;-><init>(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;F)I

    move-result p1

    iget-object p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;F)I

    move-result p3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->b(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;)I
    .locals 0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->d(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)I

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->l(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->g(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Lcom/miui/superpower/statusbar/panel/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->g(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Lcom/miui/superpower/statusbar/panel/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/superpower/statusbar/panel/a;->x()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->j(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;I)F

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->i(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;F)F

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->k(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public e(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p1, p3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->a(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;I)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public f(Landroid/view/View;FF)V
    .locals 2

    iget-object p2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p2}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->b(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Z

    move-result p2

    if-eqz p2, :cond_0

    neg-float p3, p3

    :cond_0
    const/4 p2, 0x0

    cmpl-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    :goto_0
    iget-object p2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p2, v1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;F)I

    move-result p2

    goto :goto_1

    :cond_1
    cmpg-float p3, p3, p2

    if-gez p3, :cond_3

    :cond_2
    iget-object p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p3, p2}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;F)I

    move-result p2

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_2

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->g(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Lcom/miui/superpower/statusbar/panel/a;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->g(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Lcom/miui/superpower/statusbar/panel/a;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p3, p1, p2}, Lcom/miui/superpower/statusbar/panel/a;->I(II)V

    :cond_4
    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public g(Landroid/view/View;I)Z
    .locals 0

    iget-object p2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p2}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    invoke-static {p2}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
