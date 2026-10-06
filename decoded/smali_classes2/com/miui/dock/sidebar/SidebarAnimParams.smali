.class public Lcom/miui/dock/sidebar/SidebarAnimParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alpha:F

.field private height:F

.field private radius:F

.field private rectF:Landroid/graphics/RectF;

.field private scale:F

.field private translateX:F

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->translateX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->scale:F

    iput v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->x:F

    iput v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->y:F

    iput v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->width:F

    iput v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->height:F

    iput v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->alpha:F

    invoke-static {}, Lcom/miui/common/e;->b()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lm5/g;->c(Landroid/content/res/Resources;)F

    move-result v0

    iput v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->radius:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->rectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->alpha:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->height:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->radius:F

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->scale:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->translateX:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->alpha:F

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->height:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->radius:F

    return-void
.end method

.method public setRectF(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->scale:F

    return-void
.end method

.method public setTranslateX(F)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->translateX:F

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->width:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translateX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->translateX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mRadius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/SidebarAnimParams;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
