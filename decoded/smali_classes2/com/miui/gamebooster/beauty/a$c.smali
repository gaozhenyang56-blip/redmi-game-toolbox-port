.class Lcom/miui/gamebooster/beauty/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/beauty/a;->o(Lb6/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb6/c;

.field final synthetic b:Lcom/miui/gamebooster/beauty/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/a;Lb6/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/a$c;->b:Lcom/miui/gamebooster/beauty/a;

    iput-object p2, p0, Lcom/miui/gamebooster/beauty/a$c;->a:Lb6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lw5/f;->S0(ZLw5/a;)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lw5/f;->R0(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a$c;->b:Lcom/miui/gamebooster/beauty/a;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/a;->f(Lcom/miui/gamebooster/beauty/a;)Lcom/miui/gamebooster/beauty/BeautyView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a$c;->b:Lcom/miui/gamebooster/beauty/a;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/a;->f(Lcom/miui/gamebooster/beauty/a;)Lcom/miui/gamebooster/beauty/BeautyView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/beauty/BeautyView;->t()V

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a$c;->a:Lb6/c;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lb6/c;->a(Z)V

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a$c;->b:Lcom/miui/gamebooster/beauty/a;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/a;->e(Lcom/miui/gamebooster/beauty/a;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/beauty/a;->d(Lcom/miui/gamebooster/beauty/a;Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a$c;->b:Lcom/miui/gamebooster/beauty/a;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/a;->g(Lcom/miui/gamebooster/beauty/a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/beauty/a;->p(Ljava/lang/String;)V

    return-void
.end method
