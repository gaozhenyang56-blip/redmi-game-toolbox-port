.class public Lxh/a;
.super Lxh/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lxh/a;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lxh/c;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lxh/e;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lxh/a;->g(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Can\'t set a drawable into view. You should call ImageLoader on UI thread for it."

    invoke-static {v0, p1}, Lai/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method public e(Landroid/graphics/Bitmap;)Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lxh/e;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected g(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    instance-of p2, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method
