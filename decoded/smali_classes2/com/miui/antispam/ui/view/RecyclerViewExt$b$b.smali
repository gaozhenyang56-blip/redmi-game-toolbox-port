.class Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/view/RecyclerViewExt$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;Lcom/miui/antispam/ui/view/RecyclerViewExt$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;-><init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->k(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;Z)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->k(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;Z)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
