.class public Lbm/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Z)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "ImmersionBarUtils"

    const-string p1, "mActivity is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x700

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const/16 v0, 0x710

    :cond_1
    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x1020002

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3

    invoke-static {v0}, Lbm/a;->a(Landroid/view/ViewGroup;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    if-nez p1, :cond_2

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->show(I)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/16 p1, 0x1d

    const/4 v0, 0x0

    if-lt v1, p1, :cond_4

    invoke-static {p0, v0}, Lbm/b;->a(Landroid/view/Window;Z)V

    :cond_4
    const/high16 p1, -0x1000000

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/core/graphics/d;->d(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_5
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "hide_gesture_line"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "provision_immersive_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provision_immersive_enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImmersionBarUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
