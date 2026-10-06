.class Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbc/a$a<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->b(Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->c0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->e0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f100115

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v1}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->f0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v1}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->c0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v4}, Lsb/b;->c(Landroid/widget/TextView;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v1}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->f0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v4}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->f0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)[Landroid/view/View;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v4}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v2, v1}, Lsb/b;->c(Landroid/widget/TextView;II)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v4}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->f0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)[Landroid/view/View;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v3, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v3}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->f0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)[Landroid/view/View;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {v0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->e0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v2, p1}, Lsb/b;->c(Landroid/widget/TextView;II)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {p1}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->f0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)[Landroid/view/View;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method
