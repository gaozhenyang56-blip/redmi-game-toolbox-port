.class Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->g(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->p(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v2}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->h(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->s(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v3}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->q(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->v(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->t(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->y(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->w(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->i(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->z(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;->setProcess(F)V

    return-void
.end method
