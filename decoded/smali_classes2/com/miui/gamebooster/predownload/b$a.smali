.class Lcom/miui/gamebooster/predownload/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/predownload/b;->i(Lq6/i;Li7/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li7/a;

.field final synthetic b:I

.field final synthetic c:Lq6/i;

.field final synthetic d:Lcom/miui/gamebooster/predownload/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/predownload/b;Li7/a;ILq6/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/b$a;->d:Lcom/miui/gamebooster/predownload/b;

    iput-object p2, p0, Lcom/miui/gamebooster/predownload/b$a;->a:Li7/a;

    iput p3, p0, Lcom/miui/gamebooster/predownload/b$a;->b:I

    iput-object p4, p0, Lcom/miui/gamebooster/predownload/b$a;->c:Lq6/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/b$a;->a:Li7/a;

    iget-boolean v0, p1, Li7/a;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Li7/a;->b:Z

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/b$a;->d:Lcom/miui/gamebooster/predownload/b;

    invoke-static {p1}, Lcom/miui/gamebooster/predownload/b;->g(Lcom/miui/gamebooster/predownload/b;)Lcom/miui/gamebooster/predownload/b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/b$a;->d:Lcom/miui/gamebooster/predownload/b;

    invoke-static {p1}, Lcom/miui/gamebooster/predownload/b;->g(Lcom/miui/gamebooster/predownload/b;)Lcom/miui/gamebooster/predownload/b$c;

    move-result-object p1

    iget v0, p0, Lcom/miui/gamebooster/predownload/b$a;->b:I

    invoke-interface {p1, v0}, Lcom/miui/gamebooster/predownload/b$c;->onItemClick(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/predownload/b$a;->a:Li7/a;

    invoke-static {p1}, Li7/k;->c(Li7/a;)V

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/b$a;->d:Lcom/miui/gamebooster/predownload/b;

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$a;->c:Lq6/i;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/b$a;->a:Li7/a;

    invoke-virtual {p1, v0, v1}, Lcom/miui/gamebooster/predownload/b;->n(Landroid/widget/TextView;Li7/a;)V

    return-void
.end method
