.class Lcom/miui/dock/edit/DockAppEditActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/edit/DockAppEditActivity;->z0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/dock/edit/DockAppEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/dock/edit/DockAppEditActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity$c;->b:Lcom/miui/dock/edit/DockAppEditActivity;

    iput-boolean p2, p0, Lcom/miui/dock/edit/DockAppEditActivity$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity$c;->b:Lcom/miui/dock/edit/DockAppEditActivity;

    invoke-static {v0}, Lcom/miui/dock/edit/DockAppEditActivity;->l0(Lcom/miui/dock/edit/DockAppEditActivity;)Lcom/miui/dock/edit/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/edit/c;->l()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/j;

    instance-of v3, v2, Lg5/c;

    if-eqz v3, :cond_1

    check-cast v2, Lg5/c;

    invoke-virtual {v2}, Lg5/c;->c()Landroid/content/pm/PackageInfo;

    move-result-object v2

    new-instance v3, Lf5/d;

    invoke-direct {v3}, Lf5/d;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lf5/d;->b:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v3, Lf5/d;->a:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v3, v2, Li5/c;

    if-eqz v3, :cond_0

    check-cast v2, Li5/c;

    invoke-virtual {v2}, Li5/c;->h()Li5/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveConfigToLocal: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DockEditPage"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lk5/a;->H(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity$c;->b:Lcom/miui/dock/edit/DockAppEditActivity;

    invoke-static {v0}, Lm5/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lk5/a;->y()V

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity$c;->b:Lcom/miui/dock/edit/DockAppEditActivity;

    invoke-static {v0}, Lcom/miui/dock/edit/DockAppEditActivity;->i0(Lcom/miui/dock/edit/DockAppEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/dock/edit/DockAppEditActivity$c;->a:Z

    if-eqz v0, :cond_3

    invoke-static {v1}, Ll5/b;->p(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method
