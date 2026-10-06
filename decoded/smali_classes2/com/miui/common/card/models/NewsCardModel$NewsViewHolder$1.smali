.class Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzh/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;->this$0:Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;->this$0:Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->access$000(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;)Lrh/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
