.class public abstract Lcom/miui/antispam/ui/view/RecyclerViewExt$b;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/miui/antispam/ui/view/RecyclerViewExt$c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/view/RecyclerViewExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;,
        Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Lmiuix/recyclerview/card/e<",
        "TVH;>;",
        "Landroid/widget/Filterable;",
        "Lcom/miui/antispam/ui/view/RecyclerViewExt$c$a;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/database/Cursor;

.field private d:I

.field private e:Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/antispam/ui/view/RecyclerViewExt$b<",
            "TVH;>.a;"
        }
    .end annotation
.end field

.field private f:Landroid/database/DataSetObserver;

.field private g:Lcom/miui/antispam/ui/view/RecyclerViewExt$c;

.field private h:Landroid/widget/FilterQueryProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->l(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic k(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->b:Z

    return p1
.end method

.method private l(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p2, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    iput-boolean v1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->b:Z

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    const-string p1, "_id"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->d:I

    const/4 p1, 0x2

    and-int/2addr p3, p1

    const/4 v2, 0x0

    if-ne p3, p1, :cond_2

    new-instance p1, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;

    invoke-direct {p1, p0, v2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;-><init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;Lcom/miui/antispam/ui/view/RecyclerViewExt$a;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->e:Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;

    new-instance p1, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;

    invoke-direct {p1, p0, v2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b$b;-><init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$b;Lcom/miui/antispam/ui/view/RecyclerViewExt$a;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->f:Landroid/database/DataSetObserver;

    goto :goto_2

    :cond_2
    iput-object v2, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->e:Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;

    iput-object v2, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->f:Landroid/database/DataSetObserver;

    :goto_2
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->e:Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;

    if-eqz p1, :cond_3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->f:Landroid/database/DataSetObserver;

    if-eqz p1, :cond_4

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->o(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->h:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    return-object p1
.end method

.method public c()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->g:Lcom/miui/antispam/ui/view/RecyclerViewExt$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antispam/ui/view/RecyclerViewExt$c;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$c;-><init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$c$a;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->g:Lcom/miui/antispam/ui/view/RecyclerViewExt$c;

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->g:Lcom/miui/antispam/ui/view/RecyclerViewExt$c;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    iget-boolean v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->b:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    iget v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public getItemViewGroup(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract m(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/database/Cursor;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation
.end method

.method protected abstract n()V
.end method

.method public o(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->e:Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->f:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->e:Lcom/miui/antispam/ui/view/RecyclerViewExt$b$a;

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->f:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->d:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->d:I

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->b:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->m(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/database/Cursor;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t move cursor to position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this should only be called when the cursor is valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
