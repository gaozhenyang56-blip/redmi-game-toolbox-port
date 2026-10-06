.class Lcom/miui/networkassistant/ui/view/MainToolbarItemView$1;
.super Lyh/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setCacheIcon(Ljava/lang/String;Lrh/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/view/MainToolbarItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView$1;->this$0:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    invoke-direct {p0}, Lyh/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lx4/o0;->n()Lrh/d;

    move-result-object p3

    invoke-virtual {p3}, Lrh/d;->n()Llh/a;

    move-result-object p3

    invoke-interface {p3, p1}, Llh/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lx4/d0;->a(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_1

    instance-of p3, p2, Lcom/miui/common/widgets/gif/GifImageView;

    if-eqz p3, :cond_1

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p1, p2

    check-cast p1, Lcom/miui/common/widgets/gif/GifImageView;

    invoke-virtual {p1, p3}, Lcom/miui/common/widgets/gif/GifImageView;->setStream(Ljava/io/InputStream;)V

    check-cast p2, Lcom/miui/common/widgets/gif/GifImageView;

    invoke-virtual {p2}, Lcom/miui/common/widgets/gif/GifImageView;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "setCacheIcon"

    const-string p2, "Image loads gif error"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
