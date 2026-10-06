.class Lcom/miui/dock/sidebar/j$c;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/sidebar/j;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/j;


# direct methods
.method constructor <init>(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->B()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->B()V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    const-string p1, "lineWidth"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/dock/sidebar/a;->b(Lmiuix/animation/listener/UpdateInfo;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v1}, Lcom/miui/dock/sidebar/j;->b(Lcom/miui/dock/sidebar/j;)Lcom/miui/dock/sidebar/c;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v2}, Lcom/miui/dock/sidebar/j;->c(Lcom/miui/dock/sidebar/j;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v3}, Lcom/miui/dock/sidebar/j;->d(Lcom/miui/dock/sidebar/j;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v3}, Lcom/miui/dock/sidebar/j;->d(Lcom/miui/dock/sidebar/j;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/miui/dock/sidebar/c;->g:I

    iget-object v1, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {v1}, Lcom/miui/dock/sidebar/j;->b(Lcom/miui/dock/sidebar/j;)Lcom/miui/dock/sidebar/c;

    move-result-object v1

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    iget-object v2, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v2, v3, v4}, Lcom/miui/dock/sidebar/j;->e(Lcom/miui/dock/sidebar/j;D)F

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/miui/dock/sidebar/c;->n(FF)V

    :cond_0
    const-string p1, "layoutX"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/dock/sidebar/j$c;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/dock/sidebar/j;->f(Lcom/miui/dock/sidebar/j;I)V

    :cond_1
    return-void
.end method
