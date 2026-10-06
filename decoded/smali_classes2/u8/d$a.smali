.class Lu8/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/d;->m(Lcom/miui/gamebooster/model/n;Lq6/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lu8/d;


# direct methods
.method constructor <init>(Lu8/d;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lu8/d$a;->d:Lu8/d;

    iput-object p2, p0, Lu8/d$a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lu8/d$a;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lu8/d$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lu8/d$a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lu8/d$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lu8/d$a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06030d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lu8/d$a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lu8/d$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lu8/d$a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
