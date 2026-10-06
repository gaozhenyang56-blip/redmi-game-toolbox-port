.class Lcom/miui/applicationlock/ConfirmAccessControl$e;
.super Landroidx/vectordrawable/graphics/drawable/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/b;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onAnimationEnd isFront = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->I0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfirmAccessControl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->L2()V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->I0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->J0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->i1(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->k1(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "window not active"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->z0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$e;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/b;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
