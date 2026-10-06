.class Lu2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu2/a;->w()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu2/a;


# direct methods
.method constructor <init>(Lu2/a;)V
    .locals 0

    iput-object p1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-static {p1}, Lu2/a;->d(Lu2/a;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-static {p1}, Lu2/a;->f(Lu2/a;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-static {p1}, Lu2/a;->g(Lu2/a;)Lcom/miui/antivirus/result/d0;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iget-object v1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-static {v1}, Lu2/a;->g(Lu2/a;)Lcom/miui/antivirus/result/d0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/result/d0;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lu2/a;->u(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-static {p1, v0}, Lu2/a;->h(Lu2/a;Z)Z

    :cond_1
    iget-object p1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-static {p1}, Lu2/a;->i(Lu2/a;)Lu2/a$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-static {p1, v0}, Lu2/a;->e(Lu2/a;Z)Z

    invoke-static {}, Lq2/b$a;->a()V

    iget-object p1, p0, Lu2/a$b;->a:Lu2/a;

    invoke-virtual {p1}, Lu2/a;->l()V

    :cond_2
    :goto_0
    return-void
.end method
