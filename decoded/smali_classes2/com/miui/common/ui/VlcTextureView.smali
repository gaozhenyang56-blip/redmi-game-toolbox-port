.class public Lcom/miui/common/ui/VlcTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/ui/VlcTextureView$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/ui/VlcTextureView$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/miui/common/ui/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/common/ui/VlcTextureView;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/common/ui/VlcTextureView;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    const-string p1, "HomeVideoRender"

    const-string v0, "VlcTextureView init()"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/common/ui/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/miui/common/ui/b;-><init>(Landroid/content/Context;Lcom/miui/common/ui/VlcTextureView;)V

    iput-object p1, p0, Lcom/miui/common/ui/VlcTextureView;->a:Lcom/miui/common/ui/b;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/common/ui/VlcTextureView$a;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/common/ui/VlcTextureView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/common/ui/VlcTextureView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/VlcTextureView;->a:Lcom/miui/common/ui/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/common/ui/b;->f()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/VlcTextureView;->a:Lcom/miui/common/ui/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/common/ui/b;->m()V

    return-void
.end method

.method public e(Lcom/miui/common/ui/VlcTextureView$a;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/common/ui/VlcTextureView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "HomeVideoRender"

    const-string v1, "VlcTextureView onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/common/ui/VlcTextureView;->a:Lcom/miui/common/ui/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/common/ui/b;->k(Landroid/graphics/SurfaceTexture;II)V

    sget-object p1, Lcom/miui/common/ui/VlcTextureView;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/common/ui/VlcTextureView$a;

    invoke-interface {p2}, Lcom/miui/common/ui/VlcTextureView$a;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "HomeVideoRender"

    const-string v0, "VlcTextureView onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/common/ui/VlcTextureView;->a:Lcom/miui/common/ui/b;

    invoke-virtual {p1}, Lcom/miui/common/ui/b;->l()V

    sget-object p1, Lcom/miui/common/ui/VlcTextureView;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/ui/VlcTextureView$a;

    invoke-interface {v0}, Lcom/miui/common/ui/VlcTextureView$a;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setPlayer(Lcom/miui/fastplayer/FastPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/VlcTextureView;->a:Lcom/miui/common/ui/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lcom/miui/common/ui/b;->w:Lcom/miui/fastplayer/FastPlayer;

    return-void
.end method

.method public setRenderHue(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/VlcTextureView;->a:Lcom/miui/common/ui/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/common/ui/b;->n(F)V

    return-void
.end method

.method public setRenderState(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/VlcTextureView;->a:Lcom/miui/common/ui/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/common/ui/b;->o(F)V

    return-void
.end method
