.class Lcom/miui/gamebooster/predownload/b$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/predownload/b$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/gamebooster/predownload/b$b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/predownload/b$b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/b$b$b;->b:Lcom/miui/gamebooster/predownload/b$b;

    iput-object p2, p0, Lcom/miui/gamebooster/predownload/b$b$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$b;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v1, v0, Lcom/miui/gamebooster/predownload/b$b;->d:Lcom/miui/gamebooster/predownload/b;

    iget-object v2, p0, Lcom/miui/gamebooster/predownload/b$b$b;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/miui/gamebooster/predownload/b$b;->a:Li7/a;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/miui/gamebooster/predownload/b;->h(Lcom/miui/gamebooster/predownload/b;Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Li7/a;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj7/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->o(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$b;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v0, v0, Lcom/miui/gamebooster/predownload/b$b;->a:Li7/a;

    iget-object v0, v0, Li7/a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj7/a;

    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lj7/a;->g()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$b;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v1, v0, Lcom/miui/gamebooster/predownload/b$b;->a:Li7/a;

    iput-object p1, v1, Li7/a;->d:Lj7/a;

    iget-object v2, v0, Lcom/miui/gamebooster/predownload/b$b;->d:Lcom/miui/gamebooster/predownload/b;

    iget-object v3, p0, Lcom/miui/gamebooster/predownload/b$b$b;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Lcom/miui/gamebooster/predownload/b;->h(Lcom/miui/gamebooster/predownload/b;Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Li7/a;)V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    invoke-virtual {p1}, Lj7/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lj7/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lj7/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lve/g;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/b$b$b;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v1, v1, Lcom/miui/gamebooster/predownload/b$b;->a:Li7/a;

    invoke-virtual {p1, v0, v1}, Li7/i;->O(Landroid/content/Context;Li7/a;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: invalid game award"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PreDownloadItemType"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/b$b$b;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v0, p1, Lcom/miui/gamebooster/predownload/b$b;->d:Lcom/miui/gamebooster/predownload/b;

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/b$b$b;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    const v2, 0x7f120a98

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/predownload/b$b$b;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v3, v3, Lcom/miui/gamebooster/predownload/b$b;->a:Li7/a;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/miui/gamebooster/predownload/b;->h(Lcom/miui/gamebooster/predownload/b;Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Li7/a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li7/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
