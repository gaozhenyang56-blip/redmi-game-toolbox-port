.class Lc3/i$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc3/i;


# direct methods
.method private constructor <init>(Lc3/i;)V
    .locals 0

    iput-object p1, p0, Lc3/i$b;->a:Lc3/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc3/i;Lc3/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc3/i$b;-><init>(Lc3/i;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iget-object v0, p0, Lc3/i$b;->a:Lc3/i;

    invoke-static {v0}, Lc3/i;->a(Lc3/i;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lc3/i;->b(Lc3/i;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BackgroundManager"

    const-string v0, "wallpaper is null."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const v2, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1000000

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x64

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v7, v1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method protected b(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    iget-object v0, p0, Lc3/i$b;->a:Lc3/i;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lc3/i;->c(Lc3/i;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    iget-object v0, p0, Lc3/i$b;->a:Lc3/i;

    invoke-static {v0}, Lc3/i;->d(Lc3/i;)Lc3/i$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc3/i$b;->a:Lc3/i;

    invoke-static {v0}, Lc3/i;->d(Lc3/i;)Lc3/i$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc3/i$c;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object p1, p0, Lc3/i$b;->a:Lc3/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc3/i;->e(Lc3/i;Lc3/i$c;)Lc3/i$c;

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc3/i$b;->a([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lc3/i$b;->b(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
