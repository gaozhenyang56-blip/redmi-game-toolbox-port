.class Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/windowmanager/newbox/n0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->x(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->b:Landroid/view/ViewGroup;

    iput-boolean p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->c:Z

    iput p5, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lv8/c;->g()Lv8/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->s(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.securitycenter.gamebooster.WONDERFULL_FLOAT_FINISH"

    invoke-virtual {v0, v1, v2}, Lv8/c;->j(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->t(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Lcom/miui/gamebooster/windowmanager/newbox/n0;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->a:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->c:Z

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->d:I

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->u(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;ZI)V

    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lv8/c;->g()Lv8/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->s(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.securitycenter.gamebooster.WONDERFULL_FLOAT_FINISH"

    invoke-virtual {v0, v1, v2}, Lv8/c;->j(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->t(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Lcom/miui/gamebooster/windowmanager/newbox/n0;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->a:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->c:Z

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->d:I

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->u(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;ZI)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_gb_record_manual"

    invoke-static {v1, v0}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_point_x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_point_y"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    invoke-static {}, Lv8/c;->g()Lv8/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->s(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$f;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v2}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->p(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv8/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lv8/c;->g()Lv8/c;

    move-result-object v0

    invoke-virtual {v0}, Lv8/c;->e()V

    :goto_0
    return-void
.end method
