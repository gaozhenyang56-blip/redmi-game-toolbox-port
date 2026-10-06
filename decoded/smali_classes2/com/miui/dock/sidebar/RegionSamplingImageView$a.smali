.class Lcom/miui/dock/sidebar/RegionSamplingImageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/sidebar/RegionSamplingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/RegionSamplingImageView;


# direct methods
.method constructor <init>(Lcom/miui/dock/sidebar/RegionSamplingImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;->a:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegionDarknessChanged, new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;->a:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    invoke-static {v1}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a(Lcom/miui/dock/sidebar/RegionSamplingImageView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionSamplingImageView"

    invoke-static {v1, v0}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;->a:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    invoke-static {v0}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a(Lcom/miui/dock/sidebar/RegionSamplingImageView;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;->a:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    invoke-static {v0, p1}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->b(Lcom/miui/dock/sidebar/RegionSamplingImageView;Z)Z

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;->a:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/dock/sidebar/c;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/dock/sidebar/c;

    invoke-virtual {v0, p1}, Lcom/miui/dock/sidebar/c;->p(Z)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    iget-object p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;->a:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    invoke-static {p1}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->c(Lcom/miui/dock/sidebar/RegionSamplingImageView;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;->a:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    invoke-static {p1}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->d(Lcom/miui/dock/sidebar/RegionSamplingImageView;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
