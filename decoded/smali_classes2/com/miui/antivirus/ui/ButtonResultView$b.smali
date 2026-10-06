.class Lcom/miui/antivirus/ui/ButtonResultView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/ButtonResultView;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/antivirus/ui/ButtonResultView;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/ButtonResultView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView$b;->b:Lcom/miui/antivirus/ui/ButtonResultView;

    iput-object p2, p0, Lcom/miui/antivirus/ui/ButtonResultView$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object p1

    invoke-virtual {p1}, Lo2/g;->c0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/model/d;

    invoke-virtual {p2}, Lcom/miui/antivirus/model/d;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/miui/antivirus/model/a;->f(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView$b;->b:Lcom/miui/antivirus/ui/ButtonResultView;

    iget-object v0, v0, Lcom/miui/antivirus/ui/e;->b:Lw4/e;

    const/16 v1, 0x41c

    invoke-virtual {v0, v1, p2}, Lw4/e;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
