.class Lcom/miui/securitycenter/Application$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/Application;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/Application;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lx4/a0;->u()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    invoke-static {p2}, Lcom/miui/securitycenter/Application;->o(Lcom/miui/securitycenter/Application;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lgh/b;->d(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    invoke-static {p2}, Lcom/miui/securitycenter/Application;->p(Lcom/miui/securitycenter/Application;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leg/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lx4/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    invoke-static {v0}, Lcom/miui/securitycenter/Application;->o(Lcom/miui/securitycenter/Application;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lgh/b;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    invoke-static {v0}, Lcom/miui/securitycenter/Application;->p(Lcom/miui/securitycenter/Application;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/securitycenter/Application;->m(Lcom/miui/securitycenter/Application;Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->k()I

    iget-object p1, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    invoke-static {p1}, Lcom/miui/securitycenter/Application;->n(Lcom/miui/securitycenter/Application;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->l()I

    iget-object p1, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/securitycenter/Application;->m(Lcom/miui/securitycenter/Application;Z)V

    iget-object p1, p0, Lcom/miui/securitycenter/Application$d;->a:Lcom/miui/securitycenter/Application;

    invoke-static {p1}, Lcom/miui/securitycenter/Application;->n(Lcom/miui/securitycenter/Application;)V

    return-void
.end method
