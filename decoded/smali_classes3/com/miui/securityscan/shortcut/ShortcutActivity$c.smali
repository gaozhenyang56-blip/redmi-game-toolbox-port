.class Lcom/miui/securityscan/shortcut/ShortcutActivity$c;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/shortcut/ShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lcom/miui/securityscan/shortcut/ShortcutActivity$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/shortcut/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field final synthetic i:Lcom/miui/securityscan/shortcut/ShortcutActivity;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->i:Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->b:Landroid/content/Context;

    invoke-static {}, Lx4/t;->E()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->e:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewGroup(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k(Lcom/miui/securityscan/shortcut/ShortcutActivity$a;I)V
    .locals 2
    .param p1    # Lcom/miui/securityscan/shortcut/ShortcutActivity$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/miui/securityscan/shortcut/ShortcutActivity$a;->a:Lcom/miui/securityscan/shortcut/ShortcutListItemView;

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/shortcut/c;

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->a(Lcom/miui/securityscan/shortcut/c;)V

    iget-object p2, p1, Lcom/miui/securityscan/shortcut/ShortcutActivity$a;->a:Lcom/miui/securityscan/shortcut/ShortcutListItemView;

    new-instance v0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c$a;-><init>(Lcom/miui/securityscan/shortcut/ShortcutActivity$c;Lcom/miui/securityscan/shortcut/ShortcutActivity$a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/miui/securityscan/shortcut/ShortcutActivity$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e03b9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/securityscan/shortcut/ShortcutActivity$a;

    invoke-direct {p2, p1}, Lcom/miui/securityscan/shortcut/ShortcutActivity$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->c:Z

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->g:I

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/shortcut/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->a:Ljava/util/List;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/securityscan/shortcut/ShortcutActivity$a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->k(Lcom/miui/securityscan/shortcut/ShortcutActivity$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->l(Landroid/view/ViewGroup;I)Lcom/miui/securityscan/shortcut/ShortcutActivity$a;

    move-result-object p1

    return-object p1
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->d:Z

    return-void
.end method

.method public setFoldDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->f:Z

    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method

.method public setScreenSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->h:I

    return-void
.end method
