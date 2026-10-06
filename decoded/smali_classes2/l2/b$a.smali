.class Ll2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ll2/b;


# direct methods
.method constructor <init>(Ll2/b;I)V
    .locals 0

    iput-object p1, p0, Ll2/b$a;->b:Ll2/b;

    iput p2, p0, Ll2/b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Ll2/b$a;->b:Ll2/b;

    iget-boolean v1, v0, Ll2/b;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Ll2/b;->e:Z

    invoke-virtual {v0}, Ll2/b;->n()Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-static {v0, p1}, Ll2/b;->k(Ll2/b;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object p1, p0, Ll2/b$a;->b:Ll2/b;

    iget v0, p0, Ll2/b$a;->a:I

    invoke-virtual {p1, v0, v2, v2}, Ll2/b;->t(IZZ)V

    :cond_0
    return v2
.end method
