.class Lcom/miui/antispam/ui/view/RecyclerViewExt$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/antispam/ui/view/RecyclerViewExt$d;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d$a;->b:Lcom/miui/antispam/ui/view/RecyclerViewExt$d;

    iput p2, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d$a;->b:Lcom/miui/antispam/ui/view/RecyclerViewExt$d;

    iget-boolean v1, v0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->n()Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->k(Lcom/miui/antispam/ui/view/RecyclerViewExt$d;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d$a;->b:Lcom/miui/antispam/ui/view/RecyclerViewExt$d;

    iget v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d$a;->a:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->s(IZZ)V

    :cond_0
    return v2
.end method
