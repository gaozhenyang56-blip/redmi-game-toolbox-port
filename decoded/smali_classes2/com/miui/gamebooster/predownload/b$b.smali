.class Lcom/miui/gamebooster/predownload/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/predownload/b;->n(Landroid/widget/TextView;Li7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li7/a;

.field final synthetic b:Lj7/a;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/miui/gamebooster/predownload/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/predownload/b;Li7/a;Lj7/a;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/b$b;->d:Lcom/miui/gamebooster/predownload/b;

    iput-object p2, p0, Lcom/miui/gamebooster/predownload/b$b;->a:Li7/a;

    iput-object p3, p0, Lcom/miui/gamebooster/predownload/b$b;->b:Lj7/a;

    iput-object p4, p0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b;->a:Li7/a;

    iget-boolean v0, v0, Li7/a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b;->d:Lcom/miui/gamebooster/predownload/b;

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/b$b;->b:Lj7/a;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/predownload/b;->l(Lj7/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f120a9a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/d0;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/voicechanger/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/predownload/b$b;->d:Lcom/miui/gamebooster/predownload/b;

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/b$b;->b:Lj7/a;

    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/predownload/b;->l(Lj7/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/gamebooster/predownload/b$b$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/predownload/b$b$a;-><init>(Lcom/miui/gamebooster/predownload/b$b;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lk7/f;->k()Lk7/f;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/b$b;->a:Li7/a;

    iget-object v1, v1, Li7/a;->a:Ljava/lang/String;

    new-instance v2, Lcom/miui/gamebooster/predownload/b$b$b;

    invoke-direct {v2, p0, v0}, Lcom/miui/gamebooster/predownload/b$b$b;-><init>(Lcom/miui/gamebooster/predownload/b$b;Landroid/content/Context;)V

    invoke-virtual {p1, v1, v2}, Lk7/f;->v(Ljava/lang/String;Lk7/f$b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b;->b:Lj7/a;

    invoke-virtual {v0}, Lj7/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/b$b;->b:Lj7/a;

    invoke-virtual {v1}, Lj7/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/predownload/b$b;->b:Lj7/a;

    invoke-virtual {v2}, Lj7/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lve/g;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
