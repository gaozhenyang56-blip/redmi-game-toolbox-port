.class Lfe/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfe/j;


# direct methods
.method constructor <init>(Lfe/j;)V
    .locals 0

    iput-object p1, p0, Lfe/j$b;->a:Lfe/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lfe/j$b;->a:Lfe/j;

    invoke-static {v0}, Lfe/j;->m(Lfe/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lfe/j$i;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfe/j$i;

    iget-object v0, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lfe/j$b;->a:Lfe/j;

    invoke-static {v1}, Lfe/j;->n(Lfe/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe/g;

    iget-object v1, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    iget v0, v0, Lfe/g;->a:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lfe/j$b;->a:Lfe/j;

    invoke-static {v0, v1}, Lfe/j;->k(Lfe/j;Landroid/widget/CheckBox;)V

    :cond_1
    iget-object p1, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    return-void
.end method
