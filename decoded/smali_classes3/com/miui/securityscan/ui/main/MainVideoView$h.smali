.class Lcom/miui/securityscan/ui/main/MainVideoView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/MainVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/main/MainVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/main/MainVideoView;FI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView$h;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainVideoView$h;->b:F

    iput p3, p0, Lcom/miui/securityscan/ui/main/MainVideoView$h;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/MainVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView$h;->c:I

    const/4 v2, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView$h;->b:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080f2a

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080f29

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView$h;->b:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080f28

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080f27

    :goto_0
    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$700(Lcom/miui/securityscan/ui/main/MainVideoView;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$602(Lcom/miui/securityscan/ui/main/MainVideoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$000(Lcom/miui/securityscan/ui/main/MainVideoView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/securityscan/ui/main/MainVideoView$d;

    invoke-direct {v2, v0}, Lcom/miui/securityscan/ui/main/MainVideoView$d;-><init>(Lcom/miui/securityscan/ui/main/MainVideoView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
