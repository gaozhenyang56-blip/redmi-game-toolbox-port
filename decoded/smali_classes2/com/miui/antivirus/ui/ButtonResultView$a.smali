.class Lcom/miui/antivirus/ui/ButtonResultView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/ButtonResultView;->f(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/ui/ButtonResultView;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/ButtonResultView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView$a;->a:Lcom/miui/antivirus/ui/ButtonResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView$a;->a:Lcom/miui/antivirus/ui/ButtonResultView;

    iget-object p1, p1, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object p1

    invoke-virtual {p1}, Lo2/g;->c0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/model/d;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/d;->z()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lo2/g;->v(Lcom/miui/antivirus/model/d;)V

    invoke-virtual {p1, v2}, Lo2/g;->n0(Lcom/miui/antivirus/model/d;)V

    invoke-virtual {v2}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object v1

    sget-object v3, Lo2/g$l;->d:Lo2/g$l;

    if-ne v1, v3, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lq2/b$b;->g(ZZLjava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView$a;->a:Lcom/miui/antivirus/ui/ButtonResultView;

    iget-object p2, p1, Lcom/miui/antivirus/ui/e;->b:Lw4/e;

    const/16 v0, 0x3f4

    invoke-static {p1}, Lcom/miui/antivirus/ui/ButtonResultView;->d(Lcom/miui/antivirus/ui/ButtonResultView;)Lcom/miui/antivirus/model/d;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
