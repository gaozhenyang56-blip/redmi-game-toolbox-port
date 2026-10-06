.class Lcom/miui/common/widgets/gif/GifImageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/widgets/gif/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/widgets/gif/GifImageView;


# direct methods
.method constructor <init>(Lcom/miui/common/widgets/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/widgets/gif/GifImageView$a;->a:Lcom/miui/common/widgets/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView$a;->a:Lcom/miui/common/widgets/gif/GifImageView;

    invoke-static {v0}, Lcom/miui/common/widgets/gif/GifImageView;->a(Lcom/miui/common/widgets/gif/GifImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView$a;->a:Lcom/miui/common/widgets/gif/GifImageView;

    invoke-static {v0}, Lcom/miui/common/widgets/gif/GifImageView;->b(Lcom/miui/common/widgets/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView$a;->a:Lcom/miui/common/widgets/gif/GifImageView;

    invoke-static {v0}, Lcom/miui/common/widgets/gif/GifImageView;->b(Lcom/miui/common/widgets/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/widgets/gif/GifImageView$a;->a:Lcom/miui/common/widgets/gif/GifImageView;

    invoke-static {v0}, Lcom/miui/common/widgets/gif/GifImageView;->b(Lcom/miui/common/widgets/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
