.class public Lxh/c;
.super Lxh/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lxh/e;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lxh/e;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private static h(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const p1, 0x7fffffff

    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lai/c;->c(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic a()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lxh/c;->i()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public d()Lsh/h;
    .locals 1

    iget-object v0, p0, Lxh/e;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lsh/h;->a(Landroid/widget/ImageView;)Lsh/h;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lxh/e;->d()Lsh/h;

    move-result-object v0

    return-object v0
.end method

.method protected f(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected g(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p2, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 2

    invoke-super {p0}, Lxh/e;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v1, p0, Lxh/e;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string v0, "mMaxHeight"

    invoke-static {v1, v0}, Lxh/c;->h(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getWidth()I
    .locals 2

    invoke-super {p0}, Lxh/e;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v1, p0, Lxh/e;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string v0, "mMaxWidth"

    invoke-static {v1, v0}, Lxh/c;->h(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public i()Landroid/widget/ImageView;
    .locals 1

    invoke-super {p0}, Lxh/e;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
