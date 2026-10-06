.class Lcom/miui/dock/edit/DockAppEditActivity$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/edit/DockAppEditActivity;->m0(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)Lcom/miui/dock/edit/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/miui/dock/edit/a;

.field final synthetic f:Lcom/miui/dock/edit/DockAppEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/dock/edit/DockAppEditActivity;Lcom/miui/dock/edit/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity$b;->f:Lcom/miui/dock/edit/DockAppEditActivity;

    iput-object p2, p0, Lcom/miui/dock/edit/DockAppEditActivity$b;->e:Lcom/miui/dock/edit/a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity$b;->f:Lcom/miui/dock/edit/DockAppEditActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity$b;->f:Lcom/miui/dock/edit/DockAppEditActivity;

    invoke-static {v1}, Lcom/miui/dock/edit/DockAppEditActivity;->k0(Lcom/miui/dock/edit/DockAppEditActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->s(I)V

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity$b;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v1, p1}, Lcom/miui/dock/edit/a;->y(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/dock/edit/DockAppEditActivity$b;->e:Lcom/miui/dock/edit/a;

    invoke-virtual {v1, p1}, Lcom/miui/dock/edit/a;->z(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
