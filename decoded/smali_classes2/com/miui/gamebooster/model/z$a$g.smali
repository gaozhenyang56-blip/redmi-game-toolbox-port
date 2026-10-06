.class Lcom/miui/gamebooster/model/z$a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/model/z$a;->k(Landroid/view/View;Lcom/miui/gamebooster/model/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/model/y;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/miui/gamebooster/model/z$a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/model/z$a;Lcom/miui/gamebooster/model/y;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/z$a$g;->c:Lcom/miui/gamebooster/model/z$a;

    iput-object p2, p0, Lcom/miui/gamebooster/model/z$a$g;->a:Lcom/miui/gamebooster/model/y;

    iput-object p3, p0, Lcom/miui/gamebooster/model/z$a$g;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a$g;->a:Lcom/miui/gamebooster/model/y;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/f1;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/model/z$a$g;->a:Lcom/miui/gamebooster/model/y;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/model/y;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a$g;->c:Lcom/miui/gamebooster/model/z$a;

    invoke-static {v0}, Lcom/miui/gamebooster/model/z$a;->c(Lcom/miui/gamebooster/model/z$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/model/z$a$g;->a:Lcom/miui/gamebooster/model/y;

    invoke-static {v0, v1}, La8/q;->n(Landroid/content/Context;Lcom/miui/gamebooster/model/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a$g;->c:Lcom/miui/gamebooster/model/z$a;

    invoke-static {v0}, Lcom/miui/gamebooster/model/z$a;->c(Lcom/miui/gamebooster/model/z$a;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a$g;->c:Lcom/miui/gamebooster/model/z$a;

    invoke-static {v0}, Lcom/miui/gamebooster/model/z$a;->c(Lcom/miui/gamebooster/model/z$a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    new-instance v1, Lcom/miui/gamebooster/model/z$a$g$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/model/z$a$g$a;-><init>(Lcom/miui/gamebooster/model/z$a$g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
