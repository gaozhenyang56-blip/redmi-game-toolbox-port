.class Lcom/miui/fastplayer/FastPlayer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fastplayer/FastPlayer;->HandleDataThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/fastplayer/FastPlayer;


# direct methods
.method constructor <init>(Lcom/miui/fastplayer/FastPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$000(Lcom/miui/fastplayer/FastPlayer;)Z

    move-result v2

    const-string v3, "FastPlayer"

    if-nez v2, :cond_8

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$100(Lcom/miui/fastplayer/FastPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$200(Lcom/miui/fastplayer/FastPlayer;)Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v5}, Lcom/miui/fastplayer/FastPlayer;->access$300(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v6}, Lcom/miui/fastplayer/FastPlayer;->access$400(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/miui/fastplayer/FastPlayer;->setOpenGLSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;I)I

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$500(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSurface textureid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    new-instance v4, Landroid/graphics/SurfaceTexture;

    invoke-direct {v4, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v3, v4}, Lcom/miui/fastplayer/FastPlayer;->access$602(Lcom/miui/fastplayer/FastPlayer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    new-instance v3, Lcom/miui/fastplayer/FastPlayer$a$a;

    invoke-direct {v3, p0}, Lcom/miui/fastplayer/FastPlayer$a$a;-><init>(Lcom/miui/fastplayer/FastPlayer$a;)V

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    new-instance v3, Landroid/view/Surface;

    iget-object v4, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v4}, Lcom/miui/fastplayer/FastPlayer;->access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v1, v3}, Lcom/miui/fastplayer/FastPlayer;->access$1002(Lcom/miui/fastplayer/FastPlayer;Landroid/view/Surface;)Landroid/view/Surface;

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1000(Lcom/miui/fastplayer/FastPlayer;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/fastplayer/FastPlayer;->setSurface(Landroid/view/Surface;)I

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    const/16 v4, 0x32

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1200(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/miui/fastplayer/FastPlayer;->extractMetadata(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v1, v4}, Lcom/miui/fastplayer/FastPlayer;->access$1102(Lcom/miui/fastplayer/FastPlayer;F)F

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    const/16 v4, 0x13

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1200(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/miui/fastplayer/FastPlayer;->extractMetadata(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/miui/fastplayer/FastPlayer;->access$1302(Lcom/miui/fastplayer/FastPlayer;I)I

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    const/16 v4, 0x12

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1200(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/miui/fastplayer/FastPlayer;->extractMetadata(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/miui/fastplayer/FastPlayer;->access$1402(Lcom/miui/fastplayer/FastPlayer;I)I

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1, v0}, Lcom/miui/fastplayer/FastPlayer;->access$1500(Lcom/miui/fastplayer/FastPlayer;Z)V

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    new-instance v4, Lcom/miui/fastplayer/a;

    invoke-direct {v4}, Lcom/miui/fastplayer/a;-><init>()V

    invoke-static {v1, v4}, Lcom/miui/fastplayer/FastPlayer;->access$1602(Lcom/miui/fastplayer/FastPlayer;Lcom/miui/fastplayer/a;)Lcom/miui/fastplayer/a;

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1600(Lcom/miui/fastplayer/FastPlayer;)Lcom/miui/fastplayer/a;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v4}, Lcom/miui/fastplayer/FastPlayer;->access$1100(Lcom/miui/fastplayer/FastPlayer;)F

    move-result v4

    iget-object v5, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v5}, Lcom/miui/fastplayer/FastPlayer;->access$1300(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v5

    iget-object v6, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v6}, Lcom/miui/fastplayer/FastPlayer;->access$1400(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/miui/fastplayer/a;->m(FII)V

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1600(Lcom/miui/fastplayer/FastPlayer;)Lcom/miui/fastplayer/a;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v4}, Lcom/miui/fastplayer/FastPlayer;->access$1700(Lcom/miui/fastplayer/FastPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/fastplayer/a;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1600(Lcom/miui/fastplayer/FastPlayer;)Lcom/miui/fastplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fastplayer/a;->j()Landroid/view/Surface;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v4}, Lcom/miui/fastplayer/FastPlayer;->access$300(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v6}, Lcom/miui/fastplayer/FastPlayer;->access$400(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/miui/fastplayer/FastPlayer;->setOpenGLSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;I)I

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$500(Lcom/miui/fastplayer/FastPlayer;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settranscodePath textureid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    new-instance v4, Landroid/graphics/SurfaceTexture;

    invoke-direct {v4, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v3, v4}, Lcom/miui/fastplayer/FastPlayer;->access$602(Lcom/miui/fastplayer/FastPlayer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    new-instance v3, Lcom/miui/fastplayer/FastPlayer$a$b;

    invoke-direct {v3, p0}, Lcom/miui/fastplayer/FastPlayer$a$b;-><init>(Lcom/miui/fastplayer/FastPlayer$a;)V

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    new-instance v3, Landroid/view/Surface;

    iget-object v4, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v4}, Lcom/miui/fastplayer/FastPlayer;->access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v1, v3}, Lcom/miui/fastplayer/FastPlayer;->access$1002(Lcom/miui/fastplayer/FastPlayer;Landroid/view/Surface;)Landroid/view/Surface;

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1000(Lcom/miui/fastplayer/FastPlayer;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/fastplayer/FastPlayer;->setSurface(Landroid/view/Surface;)I

    iget-object v1, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v1}, Lcom/miui/fastplayer/FastPlayer;->access$1600(Lcom/miui/fastplayer/FastPlayer;)Lcom/miui/fastplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fastplayer/a;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move v1, v2

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$100(Lcom/miui/fastplayer/FastPlayer;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$700(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$1800(Lcom/miui/fastplayer/FastPlayer;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$1900(Lcom/miui/fastplayer/FastPlayer;)[F

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/fastplayer/FastPlayer;->access$2000(Lcom/miui/fastplayer/FastPlayer;[F)I

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3, v2}, Lcom/miui/fastplayer/FastPlayer;->access$1802(Lcom/miui/fastplayer/FastPlayer;Z)Z

    :cond_3
    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$800(Lcom/miui/fastplayer/FastPlayer;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3, v2}, Lcom/miui/fastplayer/FastPlayer;->access$802(Lcom/miui/fastplayer/FastPlayer;Z)Z

    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$1900(Lcom/miui/fastplayer/FastPlayer;)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$1900(Lcom/miui/fastplayer/FastPlayer;)[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/fastplayer/FastPlayer;->access$2000(Lcom/miui/fastplayer/FastPlayer;[F)I

    :cond_4
    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$000(Lcom/miui/fastplayer/FastPlayer;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$900(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    :cond_5
    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$700(Lcom/miui/fastplayer/FastPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$1800(Lcom/miui/fastplayer/FastPlayer;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$1900(Lcom/miui/fastplayer/FastPlayer;)[F

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/fastplayer/FastPlayer;->access$2000(Lcom/miui/fastplayer/FastPlayer;[F)I

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3, v2}, Lcom/miui/fastplayer/FastPlayer;->access$1802(Lcom/miui/fastplayer/FastPlayer;Z)Z

    :cond_7
    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$800(Lcom/miui/fastplayer/FastPlayer;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3, v2}, Lcom/miui/fastplayer/FastPlayer;->access$802(Lcom/miui/fastplayer/FastPlayer;Z)Z

    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$600(Lcom/miui/fastplayer/FastPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v3}, Lcom/miui/fastplayer/FastPlayer;->access$1900(Lcom/miui/fastplayer/FastPlayer;)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v2, p0, Lcom/miui/fastplayer/FastPlayer$a;->a:Lcom/miui/fastplayer/FastPlayer;

    invoke-static {v2}, Lcom/miui/fastplayer/FastPlayer;->access$1900(Lcom/miui/fastplayer/FastPlayer;)[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/fastplayer/FastPlayer;->access$2000(Lcom/miui/fastplayer/FastPlayer;[F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    const-string v0, "Thread finished"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
